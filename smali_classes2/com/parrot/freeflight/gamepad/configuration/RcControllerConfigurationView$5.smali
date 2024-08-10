.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;
.super Ljava/lang/Object;
.source "RcControllerConfigurationView.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;


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
    .line 118
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortCalibration()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->abortCalibration()V

    .line 138
    :cond_0
    return-void
.end method

.method public onInvertClick(IZ)V
    .locals 1
    .param p1, "channelAction"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->invertChannel(IZ)V

    .line 124
    :cond_0
    return-void
.end method

.method public onStartCalibration(II)V
    .locals 2
    .param p1, "channelAction"    # I
    .param p2, "channelType"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$5;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->startCalibration(III)V

    .line 131
    :cond_0
    return-void
.end method
