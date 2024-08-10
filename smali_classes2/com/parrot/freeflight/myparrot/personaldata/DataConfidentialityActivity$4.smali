.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$4;
.super Ljava/lang/Object;
.source "DataConfidentialityActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;


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
    .line 85
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$4;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity$4;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;->access$000(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityActivity;)Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->savePersonalDataNewsletters(ZZ)V

    .line 89
    return-void
.end method
