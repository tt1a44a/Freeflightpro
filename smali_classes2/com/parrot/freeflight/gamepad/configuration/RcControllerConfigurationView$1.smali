.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;
.super Ljava/lang/Object;
.source "RcControllerConfigurationView.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;
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
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;->access$200(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationView;)V

    .line 60
    return-void
.end method
