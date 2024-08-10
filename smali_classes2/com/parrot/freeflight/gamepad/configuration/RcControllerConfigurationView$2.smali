.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$2;
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
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->showCalibrationValidation(Z)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$2;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->showMapping(Z)V

    .line 88
    return-void
.end method
