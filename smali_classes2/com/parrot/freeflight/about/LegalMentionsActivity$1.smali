.class Lcom/parrot/freeflight/about/LegalMentionsActivity$1;
.super Ljava/lang/Object;
.source "LegalMentionsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/about/LegalMentionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/about/LegalMentionsActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$1;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/about/LegalMentionsActivity$1;->this$0:Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/about/LegalMentionsActivity;->access$000(Lcom/parrot/freeflight/about/LegalMentionsActivity;)V

    .line 52
    return-void
.end method
