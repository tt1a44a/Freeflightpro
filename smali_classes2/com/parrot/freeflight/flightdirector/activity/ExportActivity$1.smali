.class Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$1;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->cancelExport()V

    .line 93
    return-void
.end method
