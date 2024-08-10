.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$1;
.super Ljava/lang/Object;
.source "DataConfidentialityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$1;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$1;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->access$000(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)V

    .line 63
    return-void
.end method
