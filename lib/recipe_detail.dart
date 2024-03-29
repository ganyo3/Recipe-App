import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  RecipeDetail({
    super.key,
    required this.recipe,
  });
  @override
  //adding recipe detail
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

int _sliderVal = 1;

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
           
            // TODO: Add Expanded
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredient.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredient[index];              
                  return Text(
                      '${ingredient.quantity * _sliderVal} ${ingredient.measure}  ${ingredient.name}'
                      );
                },
              ),
            ),
    
            // TODO: Add Slider() here
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
