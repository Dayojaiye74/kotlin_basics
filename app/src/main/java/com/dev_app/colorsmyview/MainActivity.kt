package com.dev_app.colorsmyview

import android.graphics.Color
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import kotlinx.android.synthetic.main.activity_main.*
import kotlinx.android.synthetic.main.activity_main.view.*
import timber.log.Timber

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        Timber.i( "onCreate Created..")

        setListener()
    }

    override fun onStart() {
        super.onStart()
        Timber.i("onStart Created...")
    }

    override fun onResume() {
        super.onResume()
        Timber.i("onResume Created...")
    }

    override fun onPause() {
        super.onPause()
        Timber.i("onPaused Created..")
    }
    override fun onBackPressed() {
        super.onBackPressed()
        Timber.i("onDestroyed Created..")
    }

    private fun setListener(){
        val clickableViews: List<View> =
            listOf(
                button, textView, textView2, textView3, box_one_text,
            constraint_layout, button2, button3, button4
            )
        for (item in clickableViews){
            item.setOnClickListener{
            makeColored(it)
            }
        }
    }
    //...
    private fun makeColored(view: View){
        when (view.id){

            //...android color...
            R.id.textView -> view.setBackgroundColor(Color.CYAN)
            R.id.box_one_text -> view.setBackgroundColor(Color.MAGENTA)
            R.id.button -> view.setBackgroundColor(Color.BLACK)
            R.id.textView2 -> view.setBackgroundResource(android.R.color.holo_green_light)
            R.id.textView3 -> view.setBackgroundResource(android.R.color.holo_red_dark)
            //...onclick to change color....
            R.id.button2 -> button.setBackgroundResource(R.color.red)
            R.id.button3 -> textView.setBackgroundResource(R.color.green)
            R.id.button4 -> box_one_text.setBackgroundResource(R.color.blue)
            
            else -> view.setBackgroundColor(Color.DKGRAY)

        }
    }

}
