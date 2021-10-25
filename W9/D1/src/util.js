const Util = {
  inherits(childClass, parentClass){
    function Surrogate(){};
    Surrogate.prototype = parentClass.prototype;
    childClass.prototype = new Surrogate;
    childClass.prototype.contructor = childClass;
  }
};

module.exports = Util;