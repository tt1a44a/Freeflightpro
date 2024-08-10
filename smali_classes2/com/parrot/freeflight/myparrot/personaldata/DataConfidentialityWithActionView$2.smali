.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$2;
.super Ljava/lang/Object;
.source "DataConfidentialityWithActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityWithActionView;->onDeleteClicked()V

    .line 70
    return-void
.end method
