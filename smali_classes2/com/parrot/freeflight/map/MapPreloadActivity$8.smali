.class Lcom/parrot/freeflight/map/MapPreloadActivity$8;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$8;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 205
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$8;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1000(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$8;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/map/PreloadMapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$8;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1300(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->search(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
