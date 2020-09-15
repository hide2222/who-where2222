class LogicResult < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: '血液型A型'},
    { id: 3, name: '血液型B型'},
    { id: 4, name: '血液型O型'},
    { id: 5, name: '血液型AB型'},
  ]
end
