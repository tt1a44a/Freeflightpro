.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;
.super Ljava/lang/Object;
.source "RcControllerConfigurationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->showCalibrationValidation(Z)V

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$400(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$502(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;Z)Z

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->startCalibration(III)V

    .line 109
    :cond_0
    return-void
.end method
