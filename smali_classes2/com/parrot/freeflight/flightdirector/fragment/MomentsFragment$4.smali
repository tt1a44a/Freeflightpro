.class Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$4;
.super Ljava/lang/Object;
.source "MomentsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 199
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$4;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment$4;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    invoke-static {v0, p2}, Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;->access$1700(Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;Z)V

    .line 203
    return-void
.end method
