.class Lcom/parrot/freeflight/piloting/widget/RecordingView$2;
.super Ljava/lang/Object;
.source "RecordingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/widget/RecordingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$2;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$2;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$000(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;

    .line 129
    .local v0, "listener":Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;
    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;->onRecordSettingsButtonClick()V

    goto :goto_0

    .line 131
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordingButtonsClickListener;
    :cond_0
    return-void
.end method
