.class Lcom/parrot/freeflight/start/CountryChoiceActivity$2;
.super Ljava/lang/Object;
.source "CountryChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/start/CountryChoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/CountryChoiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/CountryChoiceActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$2;->this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$2;->this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->onBackPressed()V

    .line 71
    return-void
.end method
