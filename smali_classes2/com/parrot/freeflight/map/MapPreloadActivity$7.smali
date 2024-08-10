.class Lcom/parrot/freeflight/map/MapPreloadActivity$7;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 193
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$7;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$7;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1300(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$7;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1400(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)V

    .line 198
    return-void
.end method
