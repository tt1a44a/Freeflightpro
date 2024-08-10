.class Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;
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
    .line 51
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZI)V
    .locals 4
    .param p1, "onError"    # Z
    .param p2, "errorCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$000(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$200(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    iget-object v3, v3, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    if-eqz p1, :cond_1

    const/16 v1, 0x6b

    if-eq p2, v1, :cond_1

    .line 65
    const v0, 0x7f110214

    .line 66
    .local v0, "errorMessage":I
    const/16 v1, 0x6e

    if-ne p2, v1, :cond_0

    .line 67
    const v0, 0x7f110215

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    const v3, 0x7f11021c

    .line 71
    invoke-static {v2, v3, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->getStartingIntent(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x64

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    .end local v0    # "errorMessage":I
    :cond_1
    return-void

    .line 63
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$000(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$200(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    return-void
.end method
