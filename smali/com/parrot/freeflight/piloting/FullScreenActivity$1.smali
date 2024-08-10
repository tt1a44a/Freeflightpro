.class Lcom/parrot/freeflight/piloting/FullScreenActivity$1;
.super Ljava/lang/Object;
.source "FullScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/FullScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/FullScreenActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/FullScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/FullScreenActivity;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/FullScreenActivity$1;->this$0:Lcom/parrot/freeflight/piloting/FullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/FullScreenActivity$1;->this$0:Lcom/parrot/freeflight/piloting/FullScreenActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->access$000(Lcom/parrot/freeflight/piloting/FullScreenActivity;)V

    .line 19
    return-void
.end method
