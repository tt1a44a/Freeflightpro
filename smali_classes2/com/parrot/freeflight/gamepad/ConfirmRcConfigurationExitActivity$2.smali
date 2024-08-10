.class Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$2;
.super Ljava/lang/Object;
.source "ConfirmRcConfigurationExitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->setResult(I)V

    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$2;->this$0:Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->finish()V

    .line 42
    return-void
.end method
