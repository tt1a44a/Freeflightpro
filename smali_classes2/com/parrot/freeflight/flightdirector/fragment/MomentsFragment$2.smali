.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1000(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1100(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1200(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    return-void
.end method
