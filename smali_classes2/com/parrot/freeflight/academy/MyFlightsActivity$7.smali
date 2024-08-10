.class Lcom/parrot/freeflight/academy/MyFlightsActivity$7;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/network/InternetStatusManager;->isInternetAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110160

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f11068d

    new-instance v2, Lcom/parrot/freeflight/academy/MyFlightsActivity$7$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$7$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity$7;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    const-class v3, Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
