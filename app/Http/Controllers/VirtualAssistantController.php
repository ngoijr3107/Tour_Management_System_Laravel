<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VirtualAssistantController extends Controller
{
    
    public function virtualAssistantService(Request $req)
    {

        if($req->question == null)
        {

            $question=null;

            return view('tourist.virtualAssistant.service',compact('question'));
        }

        $apiKey = env('OPENAI_API_KEY');
        $model = "text-davinci-003";
        $prompt = $req->question;
        $temperature = 0.7;
        $maxTokens = 256;
        $topP = 1;
        $frequencyPenalty = 0;
        $presencePenalty = 0;

        $data = array(
            'model' => $model,
            'prompt' => $prompt,
            'temperature' => $temperature,
            'max_tokens' => $maxTokens,
            'top_p' => $topP,
            'frequency_penalty' => $frequencyPenalty,
            'presence_penalty' => $presencePenalty
        );

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, "https://api.openai.com/v1/completions");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-Type: application/json", "Authorization: Bearer " . $apiKey));

        $response = curl_exec($ch);

        if (curl_errno($ch)) {
        } else {
            $jsonResponse = json_decode($response, true);
            $replies = '';
            
            if (isset($jsonResponse['choices']) && count($jsonResponse['choices']) > 0 && isset($jsonResponse['choices'][0]['text'])) {
                $replies = $jsonResponse['choices'][0]['text'];
               
            } else {
                $replies = 'Please tell me again..';
            }        
          
        }

        curl_close($ch);

        $question=$prompt;
        $answer=$replies;

        return view('tourist.virtualAssistant.service',compact('question','answer'));

    }


}
