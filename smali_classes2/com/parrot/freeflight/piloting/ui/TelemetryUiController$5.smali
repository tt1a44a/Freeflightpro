.class Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;
.super Ljava/lang/Object;
.source "TelemetryUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->access$200(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->access$300(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;->access$200(Lcom/parrot/freeflight/piloting/ui/TelemetryUiController;)Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/TelemetryUiController$TelemetryListener;->onDistanceClick()V

    .line 214
    :cond_0
    return-void
.end method
