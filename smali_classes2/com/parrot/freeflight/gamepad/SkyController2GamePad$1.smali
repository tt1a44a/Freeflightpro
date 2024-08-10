.class Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;
.super Ljava/lang/Object;
.source "SkyController2GamePad.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/SkyController2GamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/SkyController2GamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(IZ)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "pressed"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 31
    const-string v3, "FF4.GamePad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyEvent id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pressed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mFilterType:I

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    iget v3, v3, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->mMode:I

    if-ne v3, v6, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->access$000(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    :cond_1
    :goto_0
    return v2

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$Inputs;->getKeyCodeFromButtonId(I)I

    move-result v1

    .line 40
    .local v1, "keyCode":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 41
    new-instance v0, Landroid/view/KeyEvent;

    if-eqz p2, :cond_3

    :goto_1
    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 42
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/SkyController2GamePad$1;->this$0:Lcom/parrot/freeflight/gamepad/SkyController2GamePad;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/gamepad/SkyController2GamePad;->notifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 41
    .end local v0    # "event":Landroid/view/KeyEvent;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
