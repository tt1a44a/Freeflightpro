.class Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$1;
.super Ljava/lang/Object;
.source "WhatsNewHistoryActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$1;->this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/parrot/freeflight/whatsnew/model/Version;)V
    .locals 2
    .param p1, "item"    # Lcom/parrot/freeflight/whatsnew/model/Version;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$1;->this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity$1;->this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/freeflight/whatsnew/model/Version;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/whatsnew/WhatsNewHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
