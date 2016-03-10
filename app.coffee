

bg = new BackgroundLayer
	backgroundColor: "#293751"
	
button = new Layer
	width: 60
	backgroundColor: "none"
	height: 50
	borderRadius: 1

topHamburger = new Layer
	width: 60
	backgroundColor: "#fff"
	height: 8
	borderRadius: 2
	originY: .5
	originX: .5
	parent: button
	y: 0

middleHamburger = new Layer
	width: 60
	backgroundColor: "#fff"
	height: 8
	borderRadius: 2
	originY: .5
	originX: 1
	y:20
	parent: button

bottomHamburger = new Layer
	width: 60
	backgroundColor: "#fff"
	height: 8
	borderRadius: 2
	originY: .5
	originX: .5
	parent: button
	y: 40	
	
	


button.center()


button.onTap ->
	topHamburger.states.next()
	bottomHamburger.states.next()
	middleHamburger.states.next()	
	button.states.next()
	
animation = "spring(100, 15, 0)"
	
topHamburger.states.add
	second:
		rotation: 45
		y: 20
bottomHamburger.states.add
	second:
		rotation: -45
		y: 20		
middleHamburger.states.add
	second:
		opacity: 0		
button.states.add
	second:
		rotation: 180


topHamburger.states.animationOptions =
    curve: animation
    time: .5
    
middleHamburger.states.animationOptions =
    time: .2
    
bottomHamburger.states.animationOptions =
    curve: animation
    time: .5

button.states.animationOptions =
    curve: "spring(150, 15, 0)"
    delay: .04
    
    
    
	