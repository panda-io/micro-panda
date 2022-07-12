/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package com.github.panda_io.micro_panda;

import org.junit.Test;
import static org.junit.Assert.*;

import com.github.panda_io.micro_panda.ast.Program;
import com.github.panda_io.micro_panda.parser.*;

public class AppTest {
    @Test
    public void testCBuilder() {
        Parser parser = new Parser(null);
        Program program = parser.getProgram();

        boolean success = parser.parseFile("./src/test/resource/console/write.mpd");
        assertTrue(success);
        assertFalse(program.hasError());

        //success = parser.parseFile("./src/test/resource/main.mpd");
        //assertTrue(success);
        //assertFalse(program.hasError());

        program.validate();
        program.printErrors();
        assertFalse(program.hasError());
    }
}
