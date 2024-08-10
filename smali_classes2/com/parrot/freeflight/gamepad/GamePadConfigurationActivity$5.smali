.class Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;
.super Ljava/lang/Object;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 3
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    const-string v0, "GamePadConfigActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGamePadChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$400(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$302(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$502(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;I)I

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$600(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$400(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    goto :goto_0
.end method
