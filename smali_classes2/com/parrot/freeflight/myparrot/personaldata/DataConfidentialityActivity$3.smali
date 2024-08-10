.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;
.super Ljava/lang/Object;
.source "DataConfidentialityActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteRequest()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public onDownloadRequest()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$3;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
