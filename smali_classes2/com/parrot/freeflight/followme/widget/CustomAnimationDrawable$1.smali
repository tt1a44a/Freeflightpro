.class Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$1;
.super Ljava/lang/Object;
.source "CustomAnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$1;->this$0:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$1;->this$0:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->access$000(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;)Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$1;->this$0:Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;

    invoke-static {v0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;->access$000(Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable;)Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/followme/widget/CustomAnimationDrawable$Listener;->onAnimationFinish()V

    .line 30
    :cond_0
    return-void
.end method
