.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;
.super Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;
.source "DataConfidentialityWithActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;
    }
.end annotation


# instance fields
.field dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public deleteButton:Landroid/widget/Button;

.field public downloadButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    .line 47
    return-void
.end method


# virtual methods
.method onDeleteClicked()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;->onDeleteRequest()V

    .line 95
    :cond_0
    return-void
.end method

.method onDownloadClicked()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;->onDownloadRequest()V

    .line 90
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->onFinishInflate()V

    .line 57
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->downloadButton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->downloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$1;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->deleteButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$2;-><init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public setDataManagementListener(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->dataManagementListener:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$DataConfidentialityManagementListener;

    .line 80
    return-void
.end method
