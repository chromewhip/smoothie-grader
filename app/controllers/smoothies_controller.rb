class SmoothiesController < ApplicationController
  protect_from_forgery

  def index
  end

  def nutritional
    @fruit = params[:fruit]
    @veg = params[:veg]
    @liquid = params[:liquid]
    @seednut = params[:seednut]
    @herb = params[:herb]
  end

  def nutritionaljson
    # FRUIT VARIABLES


    @sat_fatfruit = Food.where(name: params["fruit"]).limit(1).pluck(:saturatedFats)
    @trans_fatfruit = Food.where(name: params["fruit"]).limit(1).pluck(:trans)
    @fatfruit = @trans_fatfruit[0] + @sat_fatfruit[0]
    @ingredientfruit = Food.where(name: params["fruit"]).limit(1).pluck(:name)
    @potassiumfruit = Food.where(name: params["fruit"]).limit(1).pluck(:potassium)
    @carbsfruit = Food.where(name: params["fruit"]).limit(1).pluck(:carbohydrate)
    @proteinfruit = Food.where(name: params["fruit"]).limit(1).pluck(:protein)
    # Calories = Carbs * 4 + Fat * 9 + Protein * 4
    @calsfruit = (@carbsfruit[0] * 4) + (@fatfruit * 9) + (@proteinfruit[0] * 4)
    @cals_from_fatfruit = @fatfruit * 9
    @cholesterolfruit = Food.where(name: params["fruit"]).limit(1).pluck(:cholesterol)
    @sodiumfruit = Food.where(name: params["fruit"]).limit(1).pluck(:sodium)
    @fibersfruit = Food.where(name: params["fruit"]).limit(1).pluck(:fiber)
    @sugarsfruit = Food.where(name: params["fruit"]).limit(1).pluck(:sugars)

    @vitCfruit = Food.where(name: params["fruit"]).limit(1).pluck(:vitaminc)
    @vitAfruit = Food.where(name: params["fruit"]).limit(1).pluck(:vitamina_iu)
    @calciumfruit = Food.where(name: params["fruit"]).limit(1).pluck(:calcium)
    @ironfruit = Food.where(name: params["fruit"]).limit(1).pluck(:iron)

    if @ingredientfruit[0] == "default"
      @ingredientfruit[0] = ""
    end


    # VEGGIE VARAIBLES


    @sat_fatveg = Food.where(name: params["veg"]).limit(1).pluck(:saturatedFats)
    @trans_fatveg = Food.where(name: params["veg"]).limit(1).pluck(:trans)
    @fatveg = @trans_fatveg[0] + @sat_fatveg[0]
    @ingredientveg = Food.where(name: params["veg"]).limit(1).pluck(:name)
    @potassiumveg = Food.where(name: params["veg"]).limit(1).pluck(:potassium)
    @carbsveg = Food.where(name: params["veg"]).limit(1).pluck(:carbohydrate)
    @proteinveg = Food.where(name: params["veg"]).limit(1).pluck(:protein)
    # Calories = Carbs * 4 + Fat * 9 + Protein * 4
    @calsveg = (@carbsveg[0] * 4) + (@fatveg * 9) + (@proteinveg[0] * 4)
    @cals_from_fatveg = @fatveg * 9
    @cholesterolveg = Food.where(name: params["veg"]).limit(1).pluck(:cholesterol)
    @sodiumveg = Food.where(name: params["veg"]).limit(1).pluck(:sodium)
    @fibersveg = Food.where(name: params["veg"]).limit(1).pluck(:fiber)
    @sugarsveg = Food.where(name: params["veg"]).limit(1).pluck(:sugars)

    @vitCveg = Food.where(name: params["veg"]).limit(1).pluck(:vitaminc)
    @vitAveg = Food.where(name: params["veg"]).limit(1).pluck(:vitamina_iu)
    @calciumveg = Food.where(name: params["veg"]).limit(1).pluck(:calcium)
    @ironveg = Food.where(name: params["veg"]).limit(1).pluck(:iron)

    if @ingredientveg[0] == "default"
      @ingredientveg[0] = ""
    end


    # LIQUID VARIABLES


    @sat_fatliquid = Food.where(name: params["liquid"]).limit(1).pluck(:saturatedFats)
    @trans_fatliquid = Food.where(name: params["liquid"]).limit(1).pluck(:trans)
    @fatliquid = @trans_fatliquid[0] + @sat_fatliquid[0]
    @ingredientliquid = Food.where(name: params["liquid"]).limit(1).pluck(:name)
    @potassiumliquid = Food.where(name: params["liquid"]).limit(1).pluck(:potassium)
    @carbsliquid = Food.where(name: params["liquid"]).limit(1).pluck(:carbohydrate)
    @proteinliquid = Food.where(name: params["liquid"]).limit(1).pluck(:protein)
    # Calories = Carbs * 4 + Fat * 9 + Protein * 4
    @calsliquid = (@carbsliquid[0] * 4) + (@fatliquid * 9) + (@proteinliquid[0] * 4)
    @cals_from_fatliquid = @fatliquid * 9
    @cholesterolliquid = Food.where(name: params["liquid"]).limit(1).pluck(:cholesterol)
    @sodiumliquid = Food.where(name: params["liquid"]).limit(1).pluck(:sodium)
    @fibersliquid = Food.where(name: params["liquid"]).limit(1).pluck(:fiber)
    @sugarsliquid = Food.where(name: params["liquid"]).limit(1).pluck(:sugars)

    @vitCliquid = Food.where(name: params["liquid"]).limit(1).pluck(:vitaminc)
    @vitAliquid = Food.where(name: params["liquid"]).limit(1).pluck(:vitamina_iu)
    @calciumliquid = Food.where(name: params["liquid"]).limit(1).pluck(:calcium)
    @ironliquid = Food.where(name: params["liquid"]).limit(1).pluck(:iron)

    if @ingredientliquid[0] == "default"
      @ingredientliquid[0] = ""
    end


    # SEED/NUT VARIABLES


    @sat_fatseednut = Food.where(name: params["seednut"]).limit(1).pluck(:saturatedFats)
    @trans_fatseednut = Food.where(name: params["seednut"]).limit(1).pluck(:trans)
    @fatseednut = @trans_fatseednut[0] + @sat_fatseednut[0]
    @ingredientseednut = Food.where(name: params["seednut"]).limit(1).pluck(:name)
    @potassiumseednut = Food.where(name: params["seednut"]).limit(1).pluck(:potassium)
    @carbsseednut = Food.where(name: params["seednut"]).limit(1).pluck(:carbohydrate)
    @proteinseednut = Food.where(name: params["seednut"]).limit(1).pluck(:protein)
    # Calories = Carbs * 4 + Fat * 9 + Protein * 4
    @calsseednut = (@carbsseednut[0] * 4) + (@fatseednut * 9) + (@proteinseednut[0] * 4)
    @cals_from_fatseednut = @fatseednut * 9
    @cholesterolseednut = Food.where(name: params["seednut"]).limit(1).pluck(:cholesterol)
    @sodiumseednut = Food.where(name: params["seednut"]).limit(1).pluck(:sodium)
    @fibersseednut = Food.where(name: params["seednut"]).limit(1).pluck(:fiber)
    @sugarsseednut = Food.where(name: params["seednut"]).limit(1).pluck(:sugars)

    @vitCseednut = Food.where(name: params["seednut"]).limit(1).pluck(:vitaminc)
    @vitAseednut = Food.where(name: params["seednut"]).limit(1).pluck(:vitamina_iu)
    @calciumseednut = Food.where(name: params["seednut"]).limit(1).pluck(:calcium)
    @ironseednut = Food.where(name: params["seednut"]).limit(1).pluck(:iron)

    if @ingredientseednut[0] == "default"
      @ingredientseednut[0] = ""
    end


    #HERB


    @sat_fatherb = Food.where(name: params["herb"]).limit(1).pluck(:saturatedFats)
    @trans_fatherb = Food.where(name: params["herb"]).limit(1).pluck(:trans)
    @fatherb = @trans_fatherb[0] + @sat_fatherb[0]
    @ingredientherb = Food.where(name: params["herb"]).limit(1).pluck(:name)
    @potassiumherb = Food.where(name: params["herb"]).limit(1).pluck(:potassium)
    @carbsherb = Food.where(name: params["herb"]).limit(1).pluck(:carbohydrate)
    @proteinherb = Food.where(name: params["herb"]).limit(1).pluck(:protein)
    # Calories = Carbs * 4 + Fat * 9 + Protein * 4
    @calsherb = (@carbsherb[0] * 4) + (@fatherb * 9) + (@proteinherb[0] * 4)
    @cals_from_fatherb = @fatherb * 9
    @cholesterolherb = Food.where(name: params["herb"]).limit(1).pluck(:cholesterol)
    @sodiumherb = Food.where(name: params["herb"]).limit(1).pluck(:sodium)
    @fibersherb = Food.where(name: params["herb"]).limit(1).pluck(:fiber)
    @sugarsherb = Food.where(name: params["herb"]).limit(1).pluck(:sugars)

    @vitCherb = Food.where(name: params["herb"]).limit(1).pluck(:vitaminc)
    @vitAherb = Food.where(name: params["herb"]).limit(1).pluck(:vitamina_iu)
    @calciumherb = Food.where(name: params["herb"]).limit(1).pluck(:calcium)
    @ironherb = Food.where(name: params["herb"]).limit(1).pluck(:iron)


    #TOTALS


    @potassiumtotal = @potassiumfruit[0] + @potassiumveg[0] + @potassiumliquid[0] + @potassiumseednut[0] + @potassiumherb[0]
    @calstotal = @calsfruit + @calsveg + @calsliquid + @calsseednut + @calsherb
    @cals_from_fattotal = @cals_from_fatfruit + @cals_from_fatveg + @cals_from_fatliquid + @cals_from_fatseednut + @cals_from_fatherb
    @totalfattotal = @sat_fatfruit[0] + @trans_fatfruit[0] + @sat_fatveg[0] + @trans_fatveg[0] + @sat_fatliquid[0] + @trans_fatliquid[0] + @sat_fatseednut[0] + @trans_fatseednut[0] + @sat_fatherb[0] + @trans_fatherb[0]
    @sat_fattotal = @sat_fatfruit[0] + @sat_fatveg[0] + @sat_fatliquid[0] + @sat_fatseednut[0] + @sat_fatherb[0]
    @trans_fattotal = @trans_fatfruit[0] + @trans_fatveg[0] + @trans_fatliquid[0] + @trans_fatseednut[0] + @trans_fatherb[0]
    @cholesteroltotal = @cholesterolfruit[0] + @cholesterolveg[0] + @cholesterolliquid[0] + @cholesterolseednut[0] + @cholesterolherb[0]
    @sodiumtotal = @sodiumfruit[0] + @sodiumveg[0] + @sodiumliquid[0] + @sodiumseednut[0] + @sodiumherb[0]
    @carbstotal = @carbsfruit[0] + @carbsveg[0] + @carbsliquid[0] + @carbsseednut[0] + @carbsherb[0]
    @fiberstotal = @fibersfruit[0] + @fibersveg[0] + @fibersliquid[0] + @fibersseednut[0] + @fibersherb[0]
    @sugarstotal = @sugarsfruit[0] + @sugarsveg[0] + @sugarsliquid[0] + @sugarsseednut[0] + @sugarsherb[0]
    @proteintotal = @proteinfruit[0] + @proteinveg[0] + @proteinliquid[0] + @proteinseednut[0] + @proteinherb[0]
    @vitAtotal_daily = ((@vitAfruit[0] + @vitAveg [0]+ @vitAliquid[0] + @vitAseednut[0] + @vitAherb[0]) / 3000) * 100
    @vitCtotal_daily = ((@vitCfruit[0] + @vitCveg[0] + @vitCliquid[0] + @vitCseednut[0] + @vitCherb[0]) / 85) * 100
    @calcium_daily = ((@calciumfruit[0] + @calciumveg[0] + @calciumveg[0] + @calciumseednut[0] + @calciumherb[0]) / 1000) * 100
    @iron_daily = ((@ironfruit[0] + @ironveg[0] + @ironliquid[0] + @ironseednut[0] + @ironherb[0]) / 16) * 100


    if @ingredientherb[0] == "default"
      @ingredientherb[0] = ""
    end

    def ingredlistcrafter
      "#{@ingredientfruit[0]} #{@ingredientveg[0]} #{@ingredientliquid[0]} #{@ingredientseednut[0]} #{@ingredientherb[0]}"
    end

    render json: {
      'width' => 280,
      'showServingUnitQuantity' => false,
      'itemName' => 'Smoothie',
      'ingredientList' => ingredlistcrafter,

      'showPolyFat' => false,
      'showMonoFat' => false,

      'valuePotassium' => @potassiumtotal,
      'valueCalories' => @calstotal,
      'valueFatCalories' => @cals_from_fattotal,
      'valueTotalFat' => @totalfattotal,
      'valueSatFat' => @sat_fattotal,
      'valueTransFat' => @trans_fattotal,
      'valueCholesterol' => @cholesteroltotal,
      'valueSodium' => @sodiumtotal,
      'valueTotalCarb' => @carbstotal,
      'valueFibers' => @fiberstotal,
      'valueSugars' => @sugarstotal,
      'valueProteins' => @proteintotal,
      'valueVitaminA' => @vitAtotal_daily,
      'valueVitaminC' => @vitCtotal_daily,
      'valueCalcium' => @calcium_daily,
      'valueIron' => @iron_daily
    }
  end
end