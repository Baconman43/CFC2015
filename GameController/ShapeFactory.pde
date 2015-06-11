class ShapeFactory {

  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  PShape enemyTwo;
  PShape enemyThree;

  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;

  ShapeFactory() {
    noStroke();
    buildBasicBullet();
    buildBasicPlayer();
    buildBasicEnemy();
    buildEnemyTwo();
    buildEnemyThree();
  }

  PShape getBasicBullet() { 
    return basicBullet;
  }
  PShape getBasicPlayer() { 
    return basicPlayer;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
  }
  PShape getEnemyTwo() { 
    return enemyTwo;
  }
  PShape getEnemyThree() { 
    return enemyThree;
  }

  int getBasicBulletRadius() { 
    return basicBulletRadius;
  }
  int getBasicEnemyRadius() { 
    return basicEnemyRadius;
  }  
  int getBasicPlayerRadius() { 
    return basicPlayerRadius;
  }

  void buildBasicBullet() {
    basicBulletRadius = 20;
    basicBullet = createShape(ELLIPSE, -10, -10, 20, 20);
    basicBullet.setStroke(color(255));
    basicBullet.setStrokeWeight(4);
    basicBullet.setFill(color(127));
  }

  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.vertex(0, -90);
    chassis.vertex(40, -10);
    chassis.vertex(40, 70);
    chassis.vertex(-40, 70);
    chassis.vertex(-40, 10);
    chassis.vertex(0, -90);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
    PShape turret1 = createShape(LINE, 90, -30, 40, 30);
    PShape turret2 = createShape(LINE, -90, -30, -40, 30);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
    basicPlayer.addChild(turret1);
    basicPlayer.addChild(turret2);
    stroke(255);
  }

  void buildBasicEnemy() {
    basicEnemyRadius = 40;
    basicEnemy = createShape();
    basicEnemy.beginShape();
    basicEnemy.noStroke();
    basicEnemy.strokeWeight(5);
    basicEnemy.vertex(-20, 30);
    basicEnemy.vertex(20, 30);
    basicEnemy.vertex(20, 20);
    basicEnemy.vertex(40, 0);
    basicEnemy.vertex(40, -20);
    basicEnemy.vertex(30, -30);
    basicEnemy.vertex(20, -30);
    basicEnemy.vertex(20, 0);
    basicEnemy.vertex(10, 0);
    basicEnemy.vertex(0, -10);
    basicEnemy.vertex(-10, 0);
    basicEnemy.vertex(-20, 0);
    basicEnemy.vertex(-20, -30);
    basicEnemy.vertex(-30, -30);
    basicEnemy.vertex(-40, -20);
    basicEnemy.vertex(-40, 0);
    basicEnemy.vertex(-20, 20);
    basicEnemy.vertex(-20, 30);
    basicEnemy.endShape();
    basicEnemy.rotate(PI);
    basicEnemy.scale(.5);
  }

  void buildEnemyTwo() {
    enemyTwo = createShape(GROUP);
    fill(115, 20, 240); //purple
    PShape chassis = createShape(ELLIPSE, -90, -40, 180, 80);
    fill(20, 200, 255); //light blue
    PShape dome1 = createShape(ARC, -50, -15, 100, 30, 0, PI);
    PShape dome2 = createShape(ARC, -50, -50, 100, 100, PI, TWO_PI);
    enemyTwo.addChild(chassis);
    enemyTwo.addChild(dome1);
    enemyTwo.addChild(dome2);
    enemyTwo.scale(.3);
  }

  void buildEnemyThree() {
    enemyThree = createShape(GROUP);
    fill(245, 12, 82); //more of a red
    PShape chassis = createShape(ELLIPSE, -90, -40, 180, 80);
    fill(245, 207, 12); //light blue
    PShape dome1 = createShape(ARC, -50, -15, 100, 30, 0, PI);
    PShape dome2 = createShape(ARC, -50, -50, 100, 100, PI, TWO_PI);
    enemyThree.addChild(chassis);
    enemyThree.addChild(dome1);
    enemyThree.addChild(dome2);
    enemyThree.scale(.3);
  }
}

