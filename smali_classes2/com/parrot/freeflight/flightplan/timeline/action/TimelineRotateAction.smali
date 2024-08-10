.class public Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;
.super Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
.source "TimelineRotateAction.java"


# static fields
.field private static final ANGLE_INDEX:I = 0x0

.field private static final ANGULAR_SPEED_INDEX:I = 0x1

.field private static final DEFAULT_ANGLE:F = 360.0f

.field private static final FLIGHTPLAN_ROTATE_ANGLE_KEY:Ljava/lang/String; = "FLIGHTPLAN_ROTATE_ANGLE_KEY"

.field private static final FLIGHTPLAN_ROTATE_ANGLE_SPEED_KEY:Ljava/lang/String; = "FLIGHTPLAN_ROTATE_ANGLE_SPEED_KEY"

.field private static final MAX_ANGLE:F = 3600.0f

.field private static final MIN_ANGLE:F = -3600.0f


# instance fields
.field private mDefaultAngularSpeed:F

.field private mMaxAngularSpeed:F

.field private mMinAngularSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f110243

    const v1, 0x7f0702d4

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;-><init>(II)V

    .line 34
    return-void
.end method

.method private initParameters()V
    .locals 10

    .prologue
    const/high16 v9, 0x45610000    # 3600.0f

    const/high16 v8, -0x3a9f0000    # -3600.0f

    .line 58
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 59
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 61
    .local v4, "res":Landroid/content/res/Resources;
    const-string v6, "FLIGHTPLAN_ROTATE_ANGLE_KEY"

    const/high16 v7, 0x43b40000    # 360.0f

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6, v8, v9}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v1

    .line 62
    .local v1, "defaultAngle":F
    new-instance v5, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    const v6, 0x7f110237

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 63
    .local v5, "rotateParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setPositive(Z)V

    .line 64
    invoke-virtual {v5, v8}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 65
    invoke-virtual {v5, v9}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 66
    const v6, 0x7f110192

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setUnit(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 69
    const-string v6, "FLIGHTPLAN_ROTATE_ANGLE_SPEED_KEY"

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mDefaultAngularSpeed:F

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    iget v7, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMinAngularSpeed:F

    iget v8, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMaxAngularSpeed:F

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v2

    .line 70
    .local v2, "defaultSpeed":F
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    const v6, 0x7f110238

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 71
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setPositive(Z)V

    .line 72
    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMinAngularSpeed:F

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 73
    iget v6, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMaxAngularSpeed:F

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 74
    const v6, 0x7f110191

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setUnit(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->addParameter(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)V

    .line 76
    return-void
.end method

.method private refreshDefaultValues()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getParameterSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->initParameters()V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 49
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    .line 50
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMinAngularSpeed:F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMinValue(F)V

    .line 51
    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMaxAngularSpeed:F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setMaxValue(F)V

    .line 52
    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->refresh()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;

    .line 133
    .local v0, "action":Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mParameterList:Ljava/util/List;

    .line 134
    invoke-direct {v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->initParameters()V

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getAngle()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->setParameter(FF)V

    .line 136
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->clone()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;

    move-result-object v0

    return-object v0
.end method

.method public createFlightPlanAction(Z)Lcom/parrot/freeflight/flightplan/model/action/FlightPlanAction;
    .locals 3
    .param p1, "isStartMedia"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getAngle()F

    move-result v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getSpeed()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/model/action/PanoramaAction;-><init>(FF)V

    return-object v0
.end method

.method public getActionDuration()F
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getAngle()F

    move-result v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getSpeed()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 90
    .local v0, "rotateParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMainColor()I
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05006d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .prologue
    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 95
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType()Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_ROTATE:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public getValuesString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getAngle()F

    move-result v0

    .line 102
    .local v0, "angle":F
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getSpeed()F

    move-result v2

    .line 103
    .local v2, "speed":F
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getFloatValueString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f110192

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getFloatValueString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f110191

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public initDefaultValues(Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;)V
    .locals 1
    .param p1, "productCharacteristics"    # Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getDefaultRotationSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mDefaultAngularSpeed:F

    .line 39
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMinRotationSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMinAngularSpeed:F

    .line 40
    invoke-virtual {p1}, Lcom/parrot/freeflight/flightplan/productscharacteristics/ProductCharacteristics;->getMaxRotationSpeed()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->mMaxAngularSpeed:F

    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->refreshDefaultValues()V

    .line 42
    return-void
.end method

.method public saveParametersInActionAsDefault()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineAction;->saveParametersInActionAsDefault()V

    .line 110
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FLIGHTPLAN_ROTATE_ANGLE_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getAngle()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v2, "FLIGHTPLAN_ROTATE_ANGLE_SPEED_KEY"

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getSpeed()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method

.method public setParameter(FF)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "speed"    # F

    .prologue
    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 81
    .local v1, "rotateParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 84
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineRotateAction;->getParam(I)Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .line 85
    .local v0, "angularSpeedParam":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 86
    :cond_1
    return-void
.end method
