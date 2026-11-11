.class public Lcom/nd/commplatform/d/c/mp;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

.field protected b:Lcom/nd/commplatform/d/c/mr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/mr",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Lcom/nd/commplatform/d/c/mr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;",
            "Lcom/nd/commplatform/d/c/mr",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mp;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/mp;->b:Lcom/nd/commplatform/d/c/mr;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mp;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mp;->b:Lcom/nd/commplatform/d/c/mr;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/mr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mp;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iget-object v0, v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mp;->b:Lcom/nd/commplatform/d/c/mr;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/mr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
