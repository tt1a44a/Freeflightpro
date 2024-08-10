.class Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$3;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$3;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$3;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->onBackPressed()V

    .line 161
    return-void
.end method
