.class Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$3;
.super Ljava/lang/Object;
.source "WhatsNewActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$3;->this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$3;->this$0:Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;->access$000(Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;)V

    .line 102
    return-void
.end method
