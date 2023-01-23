package br.com.locadora

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class LocadoraApplication

fun main(args: Array<String>) {
	runApplication<LocadoraApplication>(*args)
}
