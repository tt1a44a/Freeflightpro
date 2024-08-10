.class Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;
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
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    iget-object v1, v1, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    const-class v2, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
