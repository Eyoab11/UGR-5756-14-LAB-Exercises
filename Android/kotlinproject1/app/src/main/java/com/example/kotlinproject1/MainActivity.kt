package com.example.kotlinproject1

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val textViewCount: TextView = findViewById(R.id.textViewCount)
        val buttonIncrement: Button = findViewById(R.id.buttonIncrement)
        val buttonDecrement: Button = findViewById(R.id.buttonDecrement)
        val buttonReset: Button = findViewById(R.id.buttonReset)

        buttonIncrement.setOnClickListener {
            count++
            textViewCount.text = count.toString()
        }

        buttonDecrement.setOnClickListener {
            if (count > 0) {
                count--
            }
            textViewCount.text = count.toString()
        }

        buttonReset.setOnClickListener {
            count = 0
            textViewCount.text = count.toString()
        }
    }
}
