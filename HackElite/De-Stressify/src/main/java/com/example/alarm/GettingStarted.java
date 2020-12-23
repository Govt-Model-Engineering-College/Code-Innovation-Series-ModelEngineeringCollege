package com.example.alarm;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class GettingStarted extends AppCompatActivity {

    private Button buttonTwo;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_1);

        buttonTwo = findViewById(R.id.buttontwo);

        buttonTwo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent categoryIntent = new Intent(GettingStarted.this,PageTwo.class);
                startActivity(categoryIntent);
                finish();
            }
        });
    }
}
