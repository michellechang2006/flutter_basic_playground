
void main() {
  
const answerButtonList = ['AnswerButton()','AnswerButton()','AnswerButton()','AnswerButton()'];

var columnChildren = ['Text()','SizedBoxed()',answerButtonList];
  
var debugColumnChildren = ['Text()','SizedBoxed()',...answerButtonList];

print('Column(children:$columnChildren);');
// output:
// Column(children:[Text(), SizedBoxed(), [AnswerButton(), AnswerButton(), AnswerButton(), AnswerButton()]]
print('Column(children:$debugColumnChildren);');
// output:
// Column(children:[Text(), SizedBoxed(), AnswerButton(), AnswerButton(), AnswerButton(), AnswerButton()]);
}