.class Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$PlaybackListener;


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
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$200(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$300(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$200(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity$2;->this$0:Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->access$300(Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method
