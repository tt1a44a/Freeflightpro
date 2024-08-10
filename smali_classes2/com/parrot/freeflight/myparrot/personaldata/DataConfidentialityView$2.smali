.class Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;
.super Ljava/lang/Object;
.source "DataConfidentialityView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 70
    sparse-switch p2, :sswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;->onCheck(Z)V

    goto :goto_0

    .line 77
    :sswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;->access$100(Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView;)Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/myparrot/personaldata/DataConfidentialityView$DataConfidentialityListener;->onCheck(Z)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x7f0a0104 -> :sswitch_1
        0x7f0a0109 -> :sswitch_0
    .end sparse-switch
.end method
