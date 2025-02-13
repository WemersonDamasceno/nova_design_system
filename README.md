### 🏗 Nova Design System  

🚀 Um Design System modular para projetos Flutter, criado para garantir consistência visual e facilitar a manutenção da UI.  

## 📌 Instalação  

Adicione o pacote ao seu `pubspec.yaml`:  

```yaml
dependencies:
  nova_design_system:
    git:
      url: https://github.com/WemersonDamasceno/nova_design_system.git
      ref: main
```

Execute:  

```sh
flutter pub get
```

## 🎨 Componentes  

O Design System inclui:  

✅ **Cores** - Paleta de cores centralizada para manter a identidade visual.  
✅ **Tipografia** - Estilos de texto padronizados para títulos, subtítulos e corpo de texto.  
✅ **Botões** - Variantes de botões para ações primárias e secundárias.  
✅ **Inputs** - Campos de texto estilizados e prontos para uso.  
✅ **Componentes Reutilizáveis** - Widgets customizados para layouts consistentes.  

## 🔥 Exemplo de Uso  

```dart
import 'package:nova_design_system/nova_design_system.dart';

UIButton.filled(
  label: 'Clique aqui',
  onPressed: () {
    print('Botão pressionado!');
  },
)
```

## 🛠 Contribuindo  

Fique à vontade para abrir **issues** e enviar **pull requests**. Qualquer melhoria ou sugestão será bem-vinda!  

1. Faça um fork do repositório  
2. Crie uma branch (`git checkout -b feature/minha-feature`)  
3. Commit suas alterações (`git commit -m 'Adiciona nova feature'`)  
4. Faça push para a branch (`git push origin feature/minha-feature`)  
5. Abra um Pull Request 🚀  
