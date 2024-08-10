.class public Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;
.super Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
.source "ActionNumericParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mMaxValue:F

.field private mMinValue:F

.field private mPositive:Z

.field private mUnit:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    .line 21
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mPositive:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .prologue
    .line 18
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;

    .prologue
    .line 18
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    return v0
.end method


# virtual methods
.method protected createTableRow()Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter$ParameterView;-><init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;Landroid/content/Context;)V

    return-object v0
.end method

.method public getMaxValue()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    return v0
.end method

.method public isPositive()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mPositive:Z

    return v0
.end method

.method public setMaxValue(F)V
    .locals 2
    .param p1, "maxValue"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    .line 42
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setMinValue(F)V
    .locals 2
    .param p1, "minValue"    # F

    .prologue
    .line 58
    iput p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    .line 59
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setPositive(Z)V
    .locals 0
    .param p1, "isPositive"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mPositive:Z

    .line 51
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 2
    .param p1, "unit"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mUnit:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setValue(Ljava/lang/Float;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMinValue:F

    iget v3, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->mMaxValue:F

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    .line 69
    .local v0, "correctValue":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->setValue(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionNumericParameter;->setValue(Ljava/lang/Float;)V

    return-void
.end method
