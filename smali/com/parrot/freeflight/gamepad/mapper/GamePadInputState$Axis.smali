.class public Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
.super Ljava/lang/Object;
.source "GamePadInputState.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Consumable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Axis"
.end annotation


# static fields
.field private static final MIN_VALUE:F = 0.1f

.field private static final THRESHOLD:F = 0.8f


# instance fields
.field private mConsumed:I

.field private mCurrentDirection:I

.field private mFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNegativeDirection:I

.field private final mPositiveDirection:I

.field private mReachedThresholdDirection:I

.field private mValue:F


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "positiveDirection"    # I
    .param p2, "negativeDirection"    # I

    .prologue
    const/4 v0, 0x6

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mPositiveDirection:I

    .line 333
    iput p2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mNegativeDirection:I

    .line 334
    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    .line 335
    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    .line 336
    return-void
.end method

.method synthetic constructor <init>(IILcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$1;

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;-><init>(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->resetFlag()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->clear()V

    return-void
.end method

.method private checkThreshold(FF)V
    .locals 3
    .param p1, "oldValue"    # F
    .param p2, "newValue"    # F

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    const v1, -0x40b33333    # -0.8f

    .line 395
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 396
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mPositiveDirection:I

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    .line 402
    :goto_0
    return-void

    .line 397
    :cond_0
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 398
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mNegativeDirection:I

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    goto :goto_0

    .line 400
    :cond_1
    const/4 v0, 0x6

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mValue:F

    .line 385
    const/4 v0, 0x6

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    .line 386
    return-void
.end method

.method private resetFlag()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x6

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mConsumed:I

    .line 381
    return-void
.end method

.method private updateCurrentDirection(F)V
    .locals 1
    .param p1, "newValue"    # F

    .prologue
    .line 405
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 406
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mPositiveDirection:I

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    const v0, -0x40b33333    # -0.8f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 408
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mNegativeDirection:I

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, 0x6

    iput v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    goto :goto_0
.end method


# virtual methods
.method public getConsumed()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mConsumed:I

    return v0
.end method

.method public getCurrentDirection()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    return v0
.end method

.method public getReachedThresholdDirection()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    return v0
.end method

.method public getTransformedValue()F
    .locals 3

    .prologue
    .line 367
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    iget v2, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mValue:F

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->apply(F)F

    move-result v0

    .line 369
    .local v0, "newValue":F
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, -0x42333333    # -0.1f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 375
    .end local v0    # "newValue":F
    :cond_0
    :goto_0
    return v0

    .line 372
    .restart local v0    # "newValue":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 375
    .end local v0    # "newValue":F
    :cond_2
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mValue:F

    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mValue:F

    return v0
.end method

.method public setConsumed(I)V
    .locals 0
    .param p1, "consumed"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mConsumed:I

    .line 351
    return-void
.end method

.method public setFilter(Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 359
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 360
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->updateCurrentDirection(F)V

    .line 390
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mValue:F

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->checkThreshold(FF)V

    .line 391
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mValue:F

    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Axis: d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mCurrentDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->mReachedThresholdDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getConsumed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
