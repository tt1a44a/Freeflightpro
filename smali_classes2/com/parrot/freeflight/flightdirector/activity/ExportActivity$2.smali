.class Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$2;
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
    .line 96
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->setResult(I)V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->finish()V

    .line 101
    return-void
.end method
