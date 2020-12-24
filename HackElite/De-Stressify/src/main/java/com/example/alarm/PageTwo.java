package com.example.alarm;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class PageTwo extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_2);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);


        Button buttonThree = (Button)findViewById(R.id.buttonthree);
        Button buttonFour = (Button)findViewById(R.id.buttonfour);
        Button buttonFive = (Button)findViewById(R.id.buttonfive);
        Button buttonSix = (Button)findViewById(R.id.buttonsix);
        Button buttonSeven = (Button)findViewById(R.id.buttonseven);








        buttonThree.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent int2 = new Intent(PageTwo.this,MainActivity.class);
                startActivity(int2);
                finish();
            }
        });

        buttonFour.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent int3 = new Intent(PageTwo.this,MainActivity.class);
                startActivity(int3);
                finish();
            }
        });

        buttonFive.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent int4 = new Intent(PageTwo.this,MainActivity.class);
                startActivity(int4);
                finish();
            }
        });

        buttonSix.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent int5 = new Intent(PageTwo.this,MainActivity.class);
                startActivity(int5);
                finish();
            }
        });

        buttonSeven.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent int10 = new Intent(PageTwo.this,MainActivity.class);
                startActivity(int10);
                finish();
            }
        });




    }
}
