.class Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "VersionHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->bind(Lcom/parrot/freeflight/whatsnew/model/Version;ZLcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;

.field final synthetic val$listener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

.field final synthetic val$version:Lcom/parrot/freeflight/whatsnew/model/Version;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;Lcom/parrot/freeflight/whatsnew/model/Version;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;->this$1:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;->val$listener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

    iput-object p3, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;->val$version:Lcom/parrot/freeflight/whatsnew/model/Version;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;->val$listener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;->val$version:Lcom/parrot/freeflight/whatsnew/model/Version;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;->onItemClicked(Lcom/parrot/freeflight/whatsnew/model/Version;)V

    .line 59
    return-void
.end method
