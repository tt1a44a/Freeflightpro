.class Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CountryChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/start/CountryChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/parrot/freeflight/piloting/model/WifiCountry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/model/WifiCountry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/model/WifiCountry;>;"
    const v0, 0x7f0c0070

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    .line 104
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0070

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "itemView":Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    :goto_0
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-object v1

    .end local v1    # "itemView":Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    .line 107
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "itemView":Landroid/widget/TextView;
    goto :goto_0
.end method
