.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;
.super Ljava/lang/Object;
.source "DataConfidentialityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->onAuthenticationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

.field final synthetic val$isAuthenticated:Z


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iput-boolean p2, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->val$isAuthenticated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iget-object v0, v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iget-object v0, v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    iget-object v3, v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->downloadButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->val$isAuthenticated:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iget-object v0, v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->dataSharingView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    iget-object v3, v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->deleteButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->val$isAuthenticated:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    iget-object v0, v0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->newslettersView:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    iget-boolean v3, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$6;->val$isAuthenticated:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->setVisibility(I)V

    .line 136
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v0, v2

    .line 133
    goto :goto_1

    :cond_2
    move v1, v2

    .line 135
    goto :goto_2
.end method
