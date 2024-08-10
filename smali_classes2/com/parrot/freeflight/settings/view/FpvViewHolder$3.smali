.class Lcom/parrot/freeflight/settings/view/FpvViewHolder$3;
.super Ljava/lang/Object;
.source "FpvViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/FpvViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    .line 73
    .local v1, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/parrot/freeflight/settings/FpvEyesCalibrationActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
