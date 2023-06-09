package com.example.myfirebase

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.ktx.auth
import com.google.firebase.ktx.Firebase

class MainActivity : AppCompatActivity() {

    private lateinit var editTextEmail: EditText
    private lateinit var editTextPass: EditText
    private lateinit var editTextConf: EditText
    private lateinit var btnLoginRe: Button
    private lateinit var btnLoginLo: Button
    private lateinit var auth: FirebaseAuth

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        editTextEmail = findViewById(R.id.email)
        editTextPass = findViewById(R.id.pass)
        editTextConf = findViewById(R.id.pasconf)
        btnLoginRe = findViewById(R.id.regis)
        btnLoginLo = findViewById(R.id.login)

        auth = Firebase.auth

        btnLoginRe.setOnClickListener{
            signUpUser()
        }

        btnLoginLo.setOnClickListener{
            val intent = Intent(this, LoginActivity::class.java)
            startActivity(intent)
        }
    }
    private fun signUpUser(){
        val email = editTextEmail.text.toString()
        val pass = editTextPass.text.toString()
        val confirm = editTextConf.text.toString()
        if(email.isBlank() || pass.isBlank()){
            Toast.makeText(this,"Email and password no pueden estar vacios", Toast.LENGTH_LONG).show()
            return
        }
        if(pass!=confirm){
            Toast.makeText(this,"La contraseña no coincide",Toast.LENGTH_LONG).show()
        }
        auth.createUserWithEmailAndPassword(email, pass).addOnCompleteListener(this){
            if(it.isSuccessful){
                Toast.makeText(this, "El registro se completo correctamente", Toast.LENGTH_LONG).show()
                //finish()
            }else{
                Toast.makeText(this,"El registro no se pudo completar",Toast.LENGTH_LONG).show()
            }
        }
    }

    }
