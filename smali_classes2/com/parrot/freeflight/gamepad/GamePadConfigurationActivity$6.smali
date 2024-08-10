.class Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;
.super Ljava/lang/Object;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$StateListener;


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
    .line 285
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 3
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    const-string v0, "GamePadConfigActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$800(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;I)V

    .line 292
    :cond_0
    return-void
.end method
