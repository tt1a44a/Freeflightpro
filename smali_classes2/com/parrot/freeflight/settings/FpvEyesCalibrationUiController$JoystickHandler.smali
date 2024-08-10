.class Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;
.super Landroid/os/Handler;
.source "FpvEyesCalibrationUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoystickHandler"
.end annotation


# instance fields
.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;)V
    .locals 1
    .param p1, "controller"    # Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 270
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0xf

    .line 275
    iget-object v4, p0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;

    .line 276
    .local v0, "controller":Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;
    if-eqz v0, :cond_0

    .line 278
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    .line 281
    .local v1, "event":Landroid/view/MotionEvent;
    const/4 v4, -0x1

    invoke-static {v0, v1, v4}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->access$100(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 282
    .local v2, "isMoving":Z
    if-eqz v2, :cond_0

    .line 283
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v8, v9}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 287
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v2    # "isMoving":Z
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;

    .line 288
    .local v3, "joystickEventMessage":Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;
    iget v4, v3, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->leftJoystickX:F

    iget v5, v3, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->leftJoystickY:F

    iget v6, v3, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->rightJoystickX:F

    iget v7, v3, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickEventMessage;->rightJoystickY:F

    invoke-static {v0, v4, v5, v6, v7}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;->access$200(Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController;FFFF)Z

    move-result v2

    .line 290
    .restart local v2    # "isMoving":Z
    if-eqz v2, :cond_0

    .line 291
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v8, v9}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationUiController$JoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
