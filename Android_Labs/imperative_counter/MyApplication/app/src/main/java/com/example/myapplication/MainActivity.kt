package com.example.basiccounterapp

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview

import android.view.View
import android.widget.TextView
import com.example.myapplication.R

class MainActivity : ComponentActivity() {

    private lateinit var counterTextView: TextView
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        counterTextView = findViewById(R.id.counterTextView)
        updateCounterText()
    }

    private fun updateCounterText() {
        counterTextView.text = count.toString()
    }

    fun incrementCounter(view: View) {
        count++
        updateCounterText()
    }

    fun decrementCounter(view: View) {
        count--
        updateCounterText()
    }
    fun resetCounter(view: View) {
        count = 0
        updateCounterText()
    }

}