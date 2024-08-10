.class Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;
.super Ljava/lang/Object;
.source "FpvEyesCalibrationUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoystickEventMessage"
.end annotation


# instance fields
.field public final leftJoystickX:F

.field public final leftJoystickY:F

.field public final rightJoystickX:F

.field public final rightJoystickY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p1, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->leftJoystickX:F

    .line 309
    iput p2, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->leftJoystickY:F

    .line 310
    iput p3, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->rightJoystickX:F

    .line 311
    iput p4, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->rightJoystickY:F

    .line 312
    return-void
.end method
